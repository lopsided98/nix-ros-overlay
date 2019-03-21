
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, footstep-planner, humanoid-planner-2d, gridmap-2d, humanoid-localization }:
buildRosPackage {
  pname = "ros-kinetic-humanoid-navigation";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/humanoid_navigation-release/archive/release/kinetic/humanoid_navigation/0.4.2-0.tar.gz;
    sha256 = "254f9cc21e82934f0f6519b6a374d6c4f96691411a2c92a9afa5364d75024b7f";
  };

  propagatedBuildInputs = [ humanoid-planner-2d gridmap-2d footstep-planner humanoid-localization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>This stack contains packages for humanoid (biped) navigation,
    developed at the <a href="http://hrl.informatik.uni-freiburg.de/">Humanoid Robots Lab</a>
    at the Albert-Ludwigs-Universitat in Freiburg, Germany.</p>'';
    #license = lib.licenses.BSD;
  };
}
