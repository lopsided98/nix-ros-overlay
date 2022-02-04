
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-noetic-jackal-tutorials";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_tutorials/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "180abe6296db19d9bdd9e75a91701e7caf0f29e8b8a3aa7d3c32059be38cb7e1";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
