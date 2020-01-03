
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-eloquent-rqt-service-caller";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rqt_service_caller-release/archive/release/eloquent/rqt_service_caller/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "c5a784c9b58595959139b56fc62a9370863e60a866d8ce283ab9c4dd63a78223";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
