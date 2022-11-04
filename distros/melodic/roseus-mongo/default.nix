
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mongodb-store, mongodb-store-msgs, roseus, rostest }:
buildRosPackage {
  pname = "ros-melodic-roseus-mongo";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus_mongo/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "c86e4bbe0fc1f27a7c71715c22a50174fd9ba1ba38c47acb80d7c7403e2515d6";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  propagatedBuildInputs = [ mongodb-store mongodb-store-msgs roseus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roseus_mongo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
