
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, rosbridge-server, roswww, sound-play }:
buildRosPackage {
  pname = "ros-noetic-rwt-app-chooser";
  version = "0.1.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/noetic/rwt_app_chooser/0.1.1-2.tar.gz";
    name = "0.1.1-2.tar.gz";
    sha256 = "daf177b82d3c801ef0616c58c07e335b08a066620fc468ab40c18e0c5e66b576";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ app-manager rosbridge-server roswww sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The simple web frontend for app_manager'';
    license = with lib.licenses; [ mit ];
  };
}
