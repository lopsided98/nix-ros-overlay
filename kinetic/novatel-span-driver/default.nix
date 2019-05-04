
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, pythonPackages, geodesy, rostest, diagnostic-updater, rospy, std-msgs, diagnostic-msgs, roslaunch, tf, novatel-msgs }:
buildRosPackage {
  pname = "ros-kinetic-novatel-span-driver";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/novatel_span_driver-release/archive/release/kinetic/novatel_span_driver/1.1.0-0.tar.gz;
    sha256 = "df05c10b387fa8c560a89a166d0818522b4678d82063e87143899a39c9451b0a";
  };

  buildInputs = [ rostest roslaunch roslint ];
  propagatedBuildInputs = [ pythonPackages.pyserial sensor-msgs geodesy diagnostic-updater rospy std-msgs diagnostic-msgs tf novatel-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Python driver for NovAtel SPAN devices.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
