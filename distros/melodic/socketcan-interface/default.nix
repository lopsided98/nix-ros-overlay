
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, console-bridge, linuxHeaders, rosunit, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-socketcan-interface";
  version = "0.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/ros_canopen-release/archive/release/melodic/socketcan_interface/0.8.5-1.tar.gz";
    name = "0.8.5-1.tar.gz";
    sha256 = "c6081461a8225963a3d576e9e5d6abbbb1518406786d3cda971206883ee5e917";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit xmlrpcpp ];
  propagatedBuildInputs = [ boost class-loader console-bridge linuxHeaders ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generic CAN interface description with helpers for filtering and driver implementation. Further a socketcan implementation based on boost::asio is included.'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
