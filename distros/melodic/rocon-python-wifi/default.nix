
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-rocon-python-wifi";
  version = "0.3.2";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/melodic/rocon_python_wifi/0.3.2-0.tar.gz";
    name = "0.3.2-0.tar.gz";
    sha256 = "a0fe115a173a08330e7680b085161aae0bde090b2749f58fbd5ee764fedc3765";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.catkin-pkg ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pythonwifi package is available through pypi, but not through a 
    deb package. This is copy of the package suitable for use through the
    ROS ecosystem.'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
