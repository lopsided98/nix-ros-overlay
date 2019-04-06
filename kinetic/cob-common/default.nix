
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, raw-description, catkin, cob-srvs, cob-description, cob-actions, cob-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-common";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_common/0.6.11-0.tar.gz;
    sha256 = "c12b85c63726ce2d785c8c39c4e5349872459cd5af9976de4382997978ead322";
  };

  propagatedBuildInputs = [ cob-srvs raw-description cob-description cob-actions cob-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    #license = lib.licenses.Apache 2.0;
  };
}
