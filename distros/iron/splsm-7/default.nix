
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-splsm-7";
  version = "3.0.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/splsm_7/3.0.1-3.tar.gz";
    name = "3.0.1-3.tar.gz";
    sha256 = "25888380de4c0b7284eeadc984d2153c4e9c3d657d78e2d0ac45576cc68f5d07";
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
