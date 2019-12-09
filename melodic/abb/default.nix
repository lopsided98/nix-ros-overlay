
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, abb-irb6640-support, abb-irb4400-support, abb-irb5400-support, catkin, abb-irb2400-moveit-plugins, abb-irb2400-support, abb-irb6640-moveit-config, abb-driver, abb-irb2400-moveit-config, abb-resources, abb-irb6600-support }:
buildRosPackage {
  pname = "ros-melodic-abb";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/abb-release/archive/release/melodic/abb/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "f49d38c78c44f523f9a2067ffb2bbd1c25663a7d16ec57b529f4167c45429fb0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ abb-irb6640-support abb-irb4400-support abb-irb5400-support abb-irb2400-moveit-plugins abb-irb2400-support abb-irb6640-moveit-config abb-driver abb-irb2400-moveit-config abb-resources abb-irb6600-support ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS-Industrial support for ABB manipulators (metapackage).'';
    license = with lib.licenses; [ bsdOriginal asl20 ];
  };
}
