
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-volta-msgs";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_msgs/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "483381d91e81756f81cf7a9f0e5a9de5f96f3cf7d8de27e530a497433fe1e33c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ message-generation std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_msgs package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
