
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-open-karto";
  version = "1.1.4";

  src = fetchurl {
    url = "https://github.com/ros-gbp/open_karto-release/archive/release/kinetic/open_karto/1.1.4-0.tar.gz";
    name = "1.1.4-0.tar.gz";
    sha256 = "0ea5824754feaebb979c76ebe0e352e922b175dd7a5fc0a777e94f2329062f59";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized ROS packaging of the OpenKarto library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
