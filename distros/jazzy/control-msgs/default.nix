
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-control-msgs";
  version = "5.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/control_msgs-release/archive/release/jazzy/control_msgs/5.4.0-1.tar.gz";
    name = "5.4.0-1.tar.gz";
    sha256 = "346a272dbcbd8b49f13eecfa1d4f92348158c4b9e6fff0fabca1db2f457d399e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "control_msgs contains base messages and actions useful for
    controlling robots. It provides representations for controller
    setpoints and joint and cartesian trajectories.";
    license = with lib.licenses; [ bsd3 ];
  };
}
