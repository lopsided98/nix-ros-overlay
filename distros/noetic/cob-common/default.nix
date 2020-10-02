
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-actions, cob-description, cob-msgs, cob-srvs, raw-description }:
buildRosPackage {
  pname = "ros-noetic-cob-common";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_common/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "dd599c647ef1e28ec622ea723131aba9c81bfcd1c500b5f2fb0470a2976e195f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-actions cob-description cob-msgs cob-srvs raw-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_common stack hosts common packages that are used within the Care-O-bot repository. E.g. utility packages or common message and service definitions etc. Also the urdf desciption of the robot is located in this stack.'';
    license = with lib.licenses; [ asl20 ];
  };
}
