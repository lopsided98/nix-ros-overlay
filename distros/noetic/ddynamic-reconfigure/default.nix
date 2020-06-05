
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gmock, roscpp, rostest }:
buildRosPackage {
  pname = "ros-noetic-ddynamic-reconfigure";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/noetic/ddynamic_reconfigure/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "68e903ec0a816737a7c736bdc833be8a06861d4fe3f9c2aab818ec1c6fac82c0";
  };

  buildType = "catkin";
  checkInputs = [ gmock rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
