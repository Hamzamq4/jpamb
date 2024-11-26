import java

/**
 * Detects circular dependencies among Java classes.
 */
from Type type1, Type type2
where
  type1.getATypeDependency() = type2 and
  type2.getATypeDependency() = type1
select type1, type2, "Circular dependency detected between these classes."
