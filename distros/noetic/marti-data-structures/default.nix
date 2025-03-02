
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-marti-data-structures";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/marti_data_structures/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "a178c3e88912fce469d99bdbb57855cdc7633ee39da060ec40a0fe189496bb6e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "marti_data_structures";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
