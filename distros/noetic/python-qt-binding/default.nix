
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, qt5, rosbuild, sd }:
buildRosPackage {
  pname = "ros-noetic-python-qt-binding";
  version = "0.4.4-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "python_qt_binding-release";
        rev = "release/noetic/python_qt_binding/0.4.4-1";
        sha256 = "sha256-jshBly6YLRxj7Pz//RIsW77viz0Sbw2Lypm7P97Ox50=";
      };

  buildType = "catkin";
  buildInputs = [ qt5.qtbase rosbuild ];
  propagatedBuildInputs = [ catkin python3Packages.pyqt5 ];
  nativeBuildInputs = [ catkin ];
  
  postFixup = ''
    # patch in the sip bindings
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.9/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.10/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.11/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.12/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.13/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.14/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.15/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.16/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
    ${sd}/bin/sd --string-mode "sipconfig._pkg_config['default_mod_dir']" '"${python3Packages.pyqt5}/lib/python3.17/site-packages/PyQt5/bindings"'  **/*/sip_configure.py
  '';

  meta = {
    description = ''This stack provides Python bindings for Qt.
    There are two providers: pyside and pyqt.  PySide is released under
    the LGPL.  PyQt is released under the GPL.

    Both the bindings and tools to build bindings are included from each
    available provider.  For PySide, it is called &quot;Shiboken&quot;.  For PyQt,
    this is called &quot;SIP&quot;.

    Also provided is adapter code to make the user's Python code
    independent of which binding provider was actually used which makes
    it very easy to switch between these.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
