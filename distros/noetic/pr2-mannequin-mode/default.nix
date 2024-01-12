
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2-controller-manager, pr2-controllers-msgs, roslaunch, rostest, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-pr2-mannequin-mode";
  version = "0.6.2-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/pr2_apps-release/archive/release/noetic/pr2_mannequin_mode/0.6.2-1.tar.gz";
    name = "0.6.2-1.tar.gz";
    sha256 = "1df998e5dc209cf1fd65a1d84c4445d3279b489fdd2f49fb93f2e308f449e3db";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ pr2-controller-manager pr2-controllers-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pr2_mannequin_mode package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
