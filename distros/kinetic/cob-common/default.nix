
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-actions, cob-description, cob-msgs, cob-srvs, raw-description }:
buildRosPackage {
  pname = "ros-kinetic-cob-common";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_common/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "cc740253d93b48a7b7187216787e2e03cde842fa5dbb76dbdc45fc684585698f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-actions cob-description cob-msgs cob-srvs raw-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    license = with lib.licenses; [ asl20 ];
  };
}
