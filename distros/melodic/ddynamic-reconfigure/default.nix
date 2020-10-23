
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, gmock, roscpp, rostest }:
buildRosPackage {
  pname = "ros-melodic-ddynamic-reconfigure";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure/archive/release/melodic/ddynamic_reconfigure/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "3e3de53b73c044195de287a8c5472cf36779a4017201d30fb47cef65a89123c3";
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
