
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, python-qt-binding, pythonPackages, roslint, rospy, rostest, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-reconfigure";
  version = "0.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_reconfigure-release/archive/release/melodic/rqt_reconfigure/0.5.4-1.tar.gz";
    name = "0.5.4-1.tar.gz";
    sha256 = "2df7a0cf5fbaa895845208b22828c01dd85b6a749624b9f320e61f4133690544";
  };

  buildType = "catkin";
  buildInputs = [ catkin pythonPackages.setuptools roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ dynamic-reconfigure python-qt-binding pythonPackages.pyyaml rospy rqt-console rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''This rqt plugin succeeds former dynamic_reconfigure's GUI
    (reconfigure_gui), and provides the way to view and edit the parameters
    that are accessible via dynamic_reconfigure.<br/>
    <br/>
    (12/27/2012) In the future, arbitrary parameters that are not associated
    with any nodes (which are not handled by dynamic_reconfigure) might
    become handled.
    However, currently as the name indicates, this pkg solely is dependent
    on dynamic_reconfigure that allows access to only those params latched
    to nodes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
