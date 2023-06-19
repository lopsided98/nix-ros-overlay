
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, app-manager, catkin, phantomjs, pythonPackages, rosbridge-server, rostest, roswww, sound-play }:
buildRosPackage {
  pname = "ros-melodic-rwt-app-chooser";
  version = "0.1.2-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_app_chooser/0.1.2-2.tar.gz";
    name = "0.1.2-2.tar.gz";
    sha256 = "77ed17c09bfecf9bfcc82a772eb77d8b817b4a30936e640efef575aada75d6f4";
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
