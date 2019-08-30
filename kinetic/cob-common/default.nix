
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, raw-description, catkin, cob-srvs, cob-description, cob-actions, cob-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cob-common";
  version = "0.7.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_common/0.7.0-1.tar.gz;
    sha256 = "8e7fcb71eddfd29d85b519377eb8a89448fa2acf22638d750088d63519857566";
  };

  propagatedBuildInputs = [ raw-description cob-srvs cob-description cob-actions cob-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    license = with lib.licenses; [ asl20 ];
  };
}
