
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-ur-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ur_msgs-release/archive/release/rolling/ur_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "3fc331b55e2c942afcf6a32b9d8c6cb64b71d91850bc6098b743039a4d4b4629";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Message and service definitions for interacting with Universal Robots robot controllers.";
    license = with lib.licenses; [ bsd3 ];
  };
}
