
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-python-comms, rocon-app-utilities, gateway-msgs, rocon-uri, rostest, rocon-console, rocon-interactions, roslib, capabilities, rocon-app-manager-msgs, rocon-master-info, rocon-gateway-utils, rocon-std-msgs, rocon-gateway, rosmaster, std-msgs, catkin, pythonPackages, rocon-python-utils, rocon-hub, rospy, rocon-apps, roslint }:
buildRosPackage {
  pname = "ros-kinetic-rocon-app-manager";
  version = "0.9.1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/rocon_app_manager/0.9.1-0.tar.gz";
    name = "0.9.1-0.tar.gz";
    sha256 = "0a98c3ac6b0c3cc39536fe4249ede6a346966de74ae45468f1289edded4ada22";
  };

  buildType = "catkin";
  buildInputs = [ rostest pythonPackages.catkin-pkg roslint ];
  propagatedBuildInputs = [ rocon-python-comms rocon-app-utilities gateway-msgs rocon-uri rocon-console rocon-interactions roslib capabilities rocon-app-manager-msgs rocon-master-info rocon-gateway-utils rocon-std-msgs rocon-gateway rosmaster std-msgs rocon-python-utils rocon-hub rospy rocon-apps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The public interface and retaskable interface for a robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
