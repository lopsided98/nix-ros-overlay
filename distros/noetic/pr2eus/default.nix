
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, dynamic-reconfigure, euscollada, move-base-msgs, nav-msgs, pr2-controllers-msgs, pr2-description, pr2-mechanism-msgs, pr2-msgs, roseus, rosgraph-msgs, rostest, sound-play }:
buildRosPackage {
  pname = "ros-noetic-pr2eus";
  version = "0.3.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/pr2eus/0.3.15-4.tar.gz";
    name = "0.3.15-4.tar.gz";
    sha256 = "acf36a9dfd06323cbc4d414f3447f61ccbd1af992049eb74649c2322947f21a2";
  };

  buildType = "catkin";
  buildInputs = [ catkin rosgraph-msgs ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ control-msgs dynamic-reconfigure euscollada move-base-msgs nav-msgs pr2-controllers-msgs pr2-description pr2-mechanism-msgs pr2-msgs roseus sound-play ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''pr2eus'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
