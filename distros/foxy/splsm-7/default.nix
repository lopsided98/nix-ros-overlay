
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-splsm-7";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/foxy/splsm_7/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1d317dfd35dab465b9c0c49c98d1a5c18eb14e7972207f0fe7b11d6c50ae6dde";
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
