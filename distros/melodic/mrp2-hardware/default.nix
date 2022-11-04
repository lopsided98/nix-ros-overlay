
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-interface, controller-manager, dynamic-reconfigure, hardware-interface, libusb1, nav-msgs, realtime-tools, roscpp, rospy, sensor-msgs, std-msgs, std-srvs, tf, urdf }:
buildRosPackage {
  pname = "ros-melodic-mrp2-hardware";
  version = "0.2.6-r1";

  src = fetchurl {
    url = "https://github.com/milvusrobotics/mrp2_robot-release/archive/release/melodic/mrp2_hardware/0.2.6-1.tar.gz";
    name = "0.2.6-1.tar.gz";
    sha256 = "9e24ca8d2a69bc530435b6d4cbd59a9847adfccea4c3733b414c3fcdd1d52bb4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-interface controller-manager dynamic-reconfigure hardware-interface libusb1 nav-msgs realtime-tools roscpp rospy sensor-msgs std-msgs std-srvs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Hardware files to communicate with MRP2 base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
