
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-melodic-open-karto";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/open_karto-release/archive/release/melodic/open_karto/1.2.0-0.tar.gz;
    sha256 = "dd134fee71bd93a6e756305e084c1767c516f369c0afe70f921c87d040f84d1b";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    #license = lib.licenses.LGPLv3;
  };
}
