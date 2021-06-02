import "package:jael/src/member_resolver.dart";
import "package:reflectable/reflectable.dart";

/** @fileoverview Implements member resolution strategy using package:reflectable */

class ReflectableMemberResolver implements IMemberResolver
{
  final Reflectable _reflectable;

  ReflectableMemberResolver(Reflectable this._reflectable);

  @override
  Object? getMember(Object? target, String name)
  {
    InstanceMirror instanceMirror = _reflectable.reflect(target!);
    return instanceMirror.invokeGetter(name);
  }
}
