
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roseus, mongodb-store-msgs, catkin, rostest, mongodb-store }:
buildRosPackage {
  pname = "ros-kinetic-roseus-mongo";
  version = "1.7.4";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_roseus-release/archive/release/kinetic/roseus_mongo/1.7.4-0.tar.gz;
    sha256 = "68f1f20500ddc03780cd89f52fa87f454531e1ec80db8af9a08cd92d7dfe0bd5";
  };

  propagatedBuildInputs = [ roseus mongodb-store-msgs mongodb-store ];
  nativeBuildInputs = [ roseus mongodb-store-msgs rostest mongodb-store catkin ];

  meta = {
    description = ''The roseus_mongo package'';
    #license = lib.licenses.BSD;
  };
}
