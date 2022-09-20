
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-grbl-msgs";
  version = "0.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grbl_msgs-release/archive/release/galactic/grbl_msgs/0.0.2-5.tar.gz";
    name = "0.0.2-5.tar.gz";
    sha256 = "7189bd5a65e5ca5db966570e1b86eaabf71896428998f1a5990fc6d474ba5536";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Messages package for GRBL devices'';
    license = with lib.licenses; [ mit ];
  };
}
