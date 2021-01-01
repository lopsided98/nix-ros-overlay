
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, footstep-planner, gridmap-2d, humanoid-localization, humanoid-planner-2d }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-navigation";
  version = "0.4.2";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/humanoid_navigation/0.4.2-0.tar.gz";
    name = "0.4.2-0.tar.gz";
    sha256 = "254f9cc21e82934f0f6519b6a374d6c4f96691411a2c92a9afa5364d75024b7f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ footstep-planner gridmap-2d humanoid-localization humanoid-planner-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>This stack contains packages for humanoid (biped) navigation,
    developed at the <a href="http://hrl.informatik.uni-freiburg.de/">Humanoid Robots Lab</a>
    at the Albert-Ludwigs-Universitat in Freiburg, Germany.</p>'';
    license = with lib.licenses; [ bsdOriginal gpl3 ];
  };
}
