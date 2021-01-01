
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, robot-localization }:
buildRosPackage {
  pname = "ros-melodic-volta-localization";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/volta-release/archive/release/melodic/volta_localization/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "6974c44859e7b94136331e399957153e94151e35588c411bd6a7fa9de8d93135";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ robot-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The volta_localization package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
