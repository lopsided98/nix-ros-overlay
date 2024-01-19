
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-splsm-7";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/splsm_7/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "7c0bd05c40b5b9dc85f09e0899a674b9f16c7bdbe29a7148422d6f7a987e3eba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup Standard Platform League Standard Message V7 ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
