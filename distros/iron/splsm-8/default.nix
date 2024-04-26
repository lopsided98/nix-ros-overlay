
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-splsm-8";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/iron/splsm_8/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "8c04066241fb9fb348c0a77c3c69d1c30b83596752e0e1d298ec4c359fc250c6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup Standard Platform League Standard Message V8 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
