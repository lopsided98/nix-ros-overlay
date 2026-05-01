
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-splsm-7";
  version = "3.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/lyrical/splsm_7/3.0.1-5.tar.gz";
    name = "3.0.1-5.tar.gz";
    sha256 = "149fee1e1faf4d6989c9e5a08724dc9ace17d6544ff75d312e524e8502ff2cb5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup Standard Platform League Standard Message V7 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
