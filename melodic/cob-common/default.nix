
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, raw-description, catkin, cob-srvs, cob-description, cob-actions, cob-msgs }:
buildRosPackage {
  pname = "ros-melodic-cob-common";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_common/0.6.10-0.tar.gz;
    sha256 = "84d1c74ce5aab95a64c655926aef6a9b76df9d5acd2c683fa5319e3015ff4dd6";
  };

  propagatedBuildInputs = [ cob-srvs raw-description cob-description cob-actions cob-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    #license = lib.licenses.Apache 2.0;
  };
}
