
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-volta-rules";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_rules/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "99e60e515400135a52f641b9e5980b9e96c2b3f6412dd87594fb7f600cc68f1f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_rules package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
