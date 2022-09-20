
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, phantomjs, pythonPackages, rosbridge-server, rostest, roswww, sound-play }:
buildRosPackage {
  pname = "ros-melodic-rwt-app-chooser";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_app_chooser/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "d895ce642f710dec08e1dbebe7de978bcc9977b03bf135dbbf53b17a4afcf69e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ phantomjs pythonPackages.selenium rostest ];
  propagatedBuildInputs = [ app-manager rosbridge-server roswww sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The simple web frontend for app_manager'';
    license = with lib.licenses; [ mit ];
  };
}
