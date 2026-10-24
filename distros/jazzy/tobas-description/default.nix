
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-description";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_description/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "e153c4f89ce654b579420c3ce9dbe9cd25025cb62523e60b18d61f88f038c196";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "URDF models and mesh resources for Tobas hardware.";
    license = with lib.licenses; [ asl20 ];
  };
}
