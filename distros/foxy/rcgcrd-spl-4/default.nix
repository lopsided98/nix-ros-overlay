
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rcgcrd-spl-4";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/foxy/rcgcrd_spl_4/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "aa5453ef8ed730eb4eea66c67ac3a374f1e713d5d69f5fcbdb15b37a9fa29a51";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup SPL GameController Return Data V4 ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
