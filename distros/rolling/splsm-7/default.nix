
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-splsm-7";
  version = "3.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/rolling/splsm_7/3.0.1-2.tar.gz";
    name = "3.0.1-2.tar.gz";
    sha256 = "10dabc95aa678d5cfd721bfb76cb0a1cde78b3c1014526413443a3f96e6535e5";
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
