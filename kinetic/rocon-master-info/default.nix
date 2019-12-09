
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-python-comms, rocon-console, pythonPackages, rocon-icons, rocon-python-utils, catkin, rocon-std-msgs, rocon-uri, rospy, rocon-bubble-icons }:
buildRosPackage {
  pname = "ros-kinetic-rocon-master-info";
  version = "0.3.2-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/rocon_tools-release/archive/release/kinetic/rocon_master_info/0.3.2-1.tar.gz";
    name = "0.3.2-1.tar.gz";
    sha256 = "72cd378db75a699c55e7915f8e0d65dae7cc3eb4f40ef100fc1c1a96646927c7";
  };

  buildType = "catkin";
  buildInputs = [ pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ rocon-console rocon-python-comms pythonPackages.rospkg rocon-icons rocon-python-utils rocon-std-msgs rocon-uri rospy rocon-bubble-icons ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Publish master information - name, description, icon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
