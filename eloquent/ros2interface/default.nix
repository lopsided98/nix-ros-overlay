
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ros-testing, ament-copyright, std-msgs, std-srvs, rosidl-runtime-py, pythonPackages, ament-flake8, test-msgs, ament-xmllint, ros2cli, ament-pep257, ament-index-python }:
buildRosPackage {
  pname = "ros-eloquent-ros2interface";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2cli-release/archive/release/eloquent/ros2interface/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "52ae45dcee9398baaa939b18fdd7c4c578d402d8557012e61ca190c1c546fd32";
  };

  buildType = "ament_python";
  buildInputs = [ ros2cli ];
  checkInputs = [ ament-copyright ros-testing std-msgs std-srvs test-msgs ament-xmllint ament-pep257 pythonPackages.pytest ament-flake8 ];
  propagatedBuildInputs = [ rosidl-runtime-py ros2cli ament-index-python ];

  meta = {
    description = ''The interface command for ROS 2 command line tools'';
    license = with lib.licenses; [ asl20 ];
  };
}
