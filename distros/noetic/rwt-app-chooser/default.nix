
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, rosbridge-server, roslaunch, rostest, roswww, sound-play }:
buildRosPackage {
  pname = "ros-noetic-rwt-app-chooser";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_app_chooser/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "27993e17ffd3bdc7d6dfe9124823722e995a4255cd5f378a0e2d70f0b673da3c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ app-manager rosbridge-server roswww sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The simple web frontend for app_manager'';
    license = with lib.licenses; [ mit ];
  };
}
