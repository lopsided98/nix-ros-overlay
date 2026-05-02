
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-splsm-7";
  version = "3.0.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/splsm_7/3.0.1-4.tar.gz";
    name = "3.0.1-4.tar.gz";
    sha256 = "f46aab13ea37695d419c98fce6e3d455b644889322dfa1cdc000fb03f7c96bd4";
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
