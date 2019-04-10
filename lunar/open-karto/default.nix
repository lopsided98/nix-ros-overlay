
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-lunar-open-karto";
  version = "1.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/open_karto-release/archive/release/lunar/open_karto/1.2.0-0.tar.gz;
    sha256 = "16fe565f59a441ccc17a857f8161659ee831a10b06a69f1a5f7c38d5dfe76e6b";
  };

  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    #license = lib.licenses.LGPLv3;
  };
}
