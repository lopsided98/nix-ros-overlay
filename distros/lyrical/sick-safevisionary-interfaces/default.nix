
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-sick-safevisionary-interfaces";
  version = "1.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safevisionary_ros2-release/archive/release/lyrical/sick_safevisionary_interfaces/1.0.3-4.tar.gz";
    name = "1.0.3-4.tar.gz";
    sha256 = "f44b257e35d167e5e0bf5084d6a1c3305e752fa0a811daf5488fba7d9122d511";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides interface descriptions to communicate with a SICK Safevisionary Sensor over ROS 2";
    license = with lib.licenses; [ asl20 ];
  };
}
