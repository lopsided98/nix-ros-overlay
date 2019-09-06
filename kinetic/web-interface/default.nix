
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, webui, ros-apache2, image-stream, catkin, rosjson, pyclearsilver, web-msgs, rosweb, launchman }:
buildRosPackage {
  pname = "ros-kinetic-web-interface";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/UNR-RoboticsResearchLab/web_interface-release/archive/release/kinetic/web_interface/1.0.7-0.tar.gz";
    name = "1.0.7-0.tar.gz";
    sha256 = "0fb1478945c0504c45bec50ec2ac9ff88902b2453647f711f3b286236bd4caa4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ webui ros-apache2 image-stream rosjson pyclearsilver web-msgs rosweb launchman ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The web_interface package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
