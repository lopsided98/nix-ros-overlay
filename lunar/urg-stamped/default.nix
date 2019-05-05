
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, sensor-msgs, catkin, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-urg-stamped";
  version = "0.0.2";

  src = fetchurl {
    url = https://github.com/seqsense/urg_stamped-release/archive/release/lunar/urg_stamped/0.0.2-0.tar.gz;
    sha256 = "ed82790337e390f2d937ff97e8c2f702bd9cee80b0fd5a3d665661b2e6714ec7";
  };

  buildInputs = [ sensor-msgs roscpp ];
  checkInputs = [ rostest roslint rosunit ];
  propagatedBuildInputs = [ sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Precisely stamped URG driver for ROS'';
    license = with lib.licenses; [ asl20 ];
  };
}
