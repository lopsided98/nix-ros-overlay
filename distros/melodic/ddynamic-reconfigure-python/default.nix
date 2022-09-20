
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, rospy }:
buildRosPackage {
  pname = "ros-melodic-ddynamic-reconfigure-python";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/ddynamic_reconfigure_python-release/archive/release/melodic/ddynamic_reconfigure_python/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "bc8dcf50274a8e4a0548a9044f4af8ef90d207eab61b8a3ff4e474582b88121c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dynamic-reconfigure rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ddynamic_reconfigure_python package contains
    a class to instantiate dynamic reconfigure servers on the fly
    registering variables'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
