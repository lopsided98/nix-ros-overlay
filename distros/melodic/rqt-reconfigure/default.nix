
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, python-qt-binding, pythonPackages, roslint, rospy, rostest, rqt-console, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-melodic-rqt-reconfigure";
  version = "0.5.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_reconfigure-release/archive/release/melodic/rqt_reconfigure/0.5.3-1.tar.gz";
    name = "0.5.3-1.tar.gz";
    sha256 = "54bf182c0c203226a0fd612ab16b5d3904f0be7272b45f05a49fe560eee197a7";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
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
