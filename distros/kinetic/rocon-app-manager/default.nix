
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, capabilities, catkin, gateway-msgs, pythonPackages, rocon-app-manager-msgs, rocon-app-utilities, rocon-apps, rocon-console, rocon-gateway, rocon-gateway-utils, rocon-hub, rocon-interactions, rocon-master-info, rocon-python-comms, rocon-python-utils, rocon-std-msgs, rocon-uri, roslib, roslint, rosmaster, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-app-manager";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/rocon_app_manager/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "0a98c3ac6b0c3cc39536fe4249ede6a346966de74ae45468f1289edded4ada22";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg roslint rostest ];
  propagatedBuildInputs = [ capabilities gateway-msgs rocon-app-manager-msgs rocon-app-utilities rocon-apps rocon-console rocon-gateway rocon-gateway-utils rocon-hub rocon-interactions rocon-master-info rocon-python-comms rocon-python-utils rocon-std-msgs rocon-uri roslib rosmaster rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The public interface and retaskable interface for a robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
