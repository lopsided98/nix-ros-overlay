
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, mongodb-store-msgs, catkin, rostest, mongodb-store }:
buildRosPackage {
  pname = "ros-melodic-roseus-mongo";
  version = "1.7.4-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_roseus-release/archive/release/melodic/roseus_mongo/1.7.4-1.tar.gz";
    name = "1.7.4-1.tar.gz";
    sha256 = "c86e4bbe0fc1f27a7c71715c22a50174fd9ba1ba38c47acb80d7c7403e2515d6";
  };

  buildType = "catkin";
  buildInputs = [ roseus mongodb-store-msgs rostest mongodb-store ];
  propagatedBuildInputs = [ roseus mongodb-store-msgs mongodb-store ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The roseus_mongo package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
