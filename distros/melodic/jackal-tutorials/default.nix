
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-melodic-jackal-tutorials";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_tutorials/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "e8c1bfc21e3856b26debe505dba8d6da6f148a233145a1fb0fbc2093eadc1d28";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
