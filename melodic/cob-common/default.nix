
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-msgs, cob-actions, raw-description, catkin, cob-description, cob-srvs }:
buildRosPackage {
  pname = "ros-melodic-cob-common";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_common/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "5a95533dc1a09a861e9ca6bd7aa0cbd8818861ab78fccb575a96cb0436fb6fc1";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs cob-actions raw-description cob-description cob-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    license = with lib.licenses; [ asl20 ];
  };
}
