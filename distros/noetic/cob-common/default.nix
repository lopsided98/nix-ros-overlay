
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-actions, cob-description, cob-msgs, cob-srvs, raw-description }:
buildRosPackage {
  pname = "ros-noetic-cob-common";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_common/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "107d9ddf164b8d0bb175b49675311c97558a5b5f84cba6555c2bb15544595acc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-actions cob-description cob-msgs cob-srvs raw-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    license = with lib.licenses; [ asl20 ];
  };
}
