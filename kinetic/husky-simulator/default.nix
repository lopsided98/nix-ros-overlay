
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-husky-simulator";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_simulator/0.3.3-0.tar.gz;
    sha256 = "3f22bf20fee6fef8a154c778e5df08da2143d396b620c4fe6f227996caaa0c80";
  };

  propagatedBuildInputs = [ husky-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky simulation software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
