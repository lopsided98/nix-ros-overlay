
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-rosidl-typesupport-interface";
  version = "2.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/galactic/rosidl_typesupport_interface/2.2.3-1.tar.gz";
    name = "2.2.3-1.tar.gz";
    sha256 = "d9c587c1b39ac17a3bdd356c5d3d1558dab844e5622a3d9031b8e37f67c0410b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The interface for rosidl typesupport packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
